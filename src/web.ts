import { WebPlugin } from '@capacitor/core';

import type { ShareViaAirdropPlugin } from './definitions';

export class ShareViaAirdropWeb
  extends WebPlugin
  implements ShareViaAirdropPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
