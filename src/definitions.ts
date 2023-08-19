export interface ShareViaAirdropPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
