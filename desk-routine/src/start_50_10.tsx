import { routine } from '../lib/routine';

export default async () => {
  routine({ name: '50:10', standingTime: 10, sittingTime: 50 })
}
