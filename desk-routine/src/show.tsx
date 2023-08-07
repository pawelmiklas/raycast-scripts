import { List } from "@raycast/api";
import { getRoutineCache } from "../lib/cache";
import { millisecondsToTimeString } from "../lib/time";
import { useEffect, useState } from "react";

const getRemainingTime = () => {
  const routine = getRoutineCache()

  if (!routine?.timestamp) {
    return null
  }

  const remainingTime = routine?.timestamp - Date.now()

  return remainingTime >= 0 ? millisecondsToTimeString(remainingTime) : null
}

export default function Command() {
  const routine = getRoutineCache()
  const [remainingTime, setRemainingTime] = useState<string | null>(getRemainingTime())

  useEffect(() => {
    const interval = setInterval(() => {
      setRemainingTime(getRemainingTime())
    }, 1000);

    return () => clearInterval(interval);
  }, []);

  return (
    <List>
      {remainingTime ? (
        <List.Item
          title={`${routine?.isSitting ? "Sitting 🪑" : "Standing 🧍🏻"}`}
          subtitle={`${remainingTime} left`}
        />
      ) : null}
    </List>
  );
}
