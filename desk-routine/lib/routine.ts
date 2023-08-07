import { showHUD, environment, } from '@raycast/api';
import { getRoutineCache, setRoutineCache } from './cache';
import { addMinutes } from './time';
import sound from "sound-play";

interface Routine {
  standingTime: number;
  sittingTime: number;
  name: string;
}

const ROUTINE_LIMIT = 24

const routine = async ({ name, sittingTime, standingTime }: Routine) => {
  const routineCache = getRoutineCache()

  if (environment.launchType === 'userInitiated') {
    setRoutineCache({
      timestamp: addMinutes(sittingTime),
      isSitting: true,
      name,
      index: 0,
    })
    await showHUD(`Sit Down 🪑 for ${sittingTime} minutes`);
    return
  }

  if (environment.launchType === 'background') {
    if (routineCache === null) {
      return
    }

    if (routineCache.name !== name) {
      return
    }

    if (routineCache.index >= ROUTINE_LIMIT) {
      return
    }

    if (routineCache.timestamp > new Date().getTime()) {
      return
    }

    if (routineCache.isSitting) {
      setRoutineCache({
        timestamp: addMinutes(standingTime),
        isSitting: false,
        name,
        index: routineCache.index + 1,
      })
      sound.play("/Users/pawelmiklas/Documents/raycast-scripts/desk-routine/fluteRiff.wav");
      await showHUD(`Stand Up 🧍🏻 for ${standingTime} minutes`);
      return
    }

    setRoutineCache({
      timestamp: addMinutes(sittingTime),
      isSitting: true,
      name,
      index: routineCache.index + 1,
    })
    sound.play("/Users/pawelmiklas/Documents/raycast-scripts/desk-routine/fluteRiff.wav");
    await showHUD(`Sit Down 🪑 for ${sittingTime} minutes`);
  }
}

export { routine }
