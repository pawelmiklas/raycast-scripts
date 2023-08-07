import { showHUD } from "@raycast/api";
import { clearRoutineCache } from "../lib/cache";

export default async function main() {
  clearRoutineCache()
  await showHUD("Stopped routine");
}
