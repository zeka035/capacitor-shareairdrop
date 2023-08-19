import { registerPlugin } from '@capacitor/core';

import type { ShareViaAirdropPlugin } from './definitions';

const ShareViaAirdrop = registerPlugin<ShareViaAirdropPlugin>(
  'ShareViaAirdrop',
  {
    web: () => import('./web').then(m => new m.ShareViaAirdropWeb()),
  },
);

export * from './definitions';
export { ShareViaAirdrop };
