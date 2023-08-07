import { routine } from '../lib/routine';

export default async () => {
  routine({ name: '30:30', standingTime: 30, sittingTime: 30 })
}
