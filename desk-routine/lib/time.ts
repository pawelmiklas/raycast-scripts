const addMinutes = (minutes: number) => new Date(new Date().getTime() + minutes * 60000).getTime()

const millisecondsToTimeString = (milliseconds: number) => {
  const minutes = Math.floor(milliseconds / 60000)
  const seconds = Math.floor((milliseconds % 60000) / 1000)
  return `${minutes}:${seconds.toString().padStart(2, '0')}`
}

export { addMinutes, millisecondsToTimeString }
