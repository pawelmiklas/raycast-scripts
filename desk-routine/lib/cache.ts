import { Cache } from "@raycast/api";

export interface RoutineCache {
  timestamp: number;
  isSitting: boolean;
  name: string
  index: number
}

const internalCache = new Cache()

const getRoutineCache = (): RoutineCache | null => {
  const routineCache = internalCache.get('routine')
  return routineCache ? JSON.parse(routineCache) : null
}

const setRoutineCache = (routineCache: RoutineCache) => {
  internalCache.set('routine', JSON.stringify(routineCache))
}

const clearRoutineCache = () => {
  internalCache.remove('routine')
}

export { internalCache, getRoutineCache, setRoutineCache, clearRoutineCache }
