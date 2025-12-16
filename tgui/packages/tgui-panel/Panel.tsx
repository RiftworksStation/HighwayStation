/**
 * @file
 * @copyright 2020 Aleksej Komarov
 * @license MIT
 */

import { useAtom } from 'jotai';
import { Pane } from 'tgui/layouts';
import { Button, Section, Stack } from 'tgui-core/components';
import { NowPlayingWidget, useAudio } from './audio';
import { ChatPanel, ChatTabs } from './chat';
import { useGame } from './game';
import { Notifications } from './Notifications';
import { PingIndicator } from './ping';
import { ReconnectButton } from './reconnect';
import { settingsVisibleAtom } from './settings/atoms';
import { SettingsPanel } from './settings/SettingsPanel';
import { useSettings } from './settings/use-settings';
import { EmotePanel, useEmotes } from './emotes'; // BANDASTATION ADD  - Emote Panel

export const Panel = (props) => {
  const emotes = useEmotes(); // BANDASTATION ADD  - Emote Panel
  const audio = useAudio();
  const { settings } = useSettings();
  const game = useGame();
  const [settingsVisible, setSettingsVisible] = useAtom(settingsVisibleAtom);

  return (
    <Pane theme={settings.theme}>
      <Stack fill vertical>
        <Stack.Item>
          <Section fitted>
            <Stack mr={1} align="center">
              <Stack.Item grow>
                <ChatTabs />
              </Stack.Item>
              <Stack.Item>
                <PingIndicator />
              </Stack.Item>
              {/* BANDASTATION ADD START - Emote Panel */}
              <Stack.Item>
                <Button
                  color="grey"
                  selected={emotes.visible}
                  icon="face-grin-beam"
                  tooltip="Emote Panel"
                  tooltipPosition="bottom-start"
                  onClick={() => emotes.toggle()}
                />
              </Stack.Item>
              {/* BANDASTATION ADD END - Emote Panel */}
              <Stack.Item>
                <Button
                  color="grey"
                  selected={audio.visible}
                  icon="music"
                  tooltip="Music player"
                  tooltipPosition="bottom-start"
                  onClick={() => audio.toggle()}
                />
              </Stack.Item>
              <Stack.Item>
                <Button
                  icon={settingsVisible ? 'times' : 'cog'}
                  selected={settingsVisible}
                  tooltip={settingsVisible ? 'Close settings' : 'Open settings'}
                  tooltipPosition="bottom-start"
                  onClick={() => setSettingsVisible(!settingsVisible)}
                />
              </Stack.Item>
            </Stack>
          </Section>
        </Stack.Item>
        {/* BANDASTATION ADD START - Emote Panel */}
        {emotes.visible && (
          <Stack.Item>
            <Section>
              <EmotePanel />
            </Section>
          </Stack.Item>
        )}
        {/* BANDASTATION ADD END - Emote Panel */}
        {audio.visible && (
          <Stack.Item>
            <Section>
              <NowPlayingWidget />
            </Section>
          </Stack.Item>
        )}
        {settingsVisible && (
          <Stack.Item>
            <SettingsPanel />
          </Stack.Item>
        )}
        <Stack.Item grow>
          <Section fill fitted position="relative">
            <Pane.Content scrollable>
              <ChatPanel lineHeight={settings.lineHeight} />
            </Pane.Content>
            <Notifications>
              {game.connectionLostAt && (
                <Notifications.Item rightSlot={<ReconnectButton />}>
                  You are either AFK, experiencing lag or the connection has
                  closed.
                </Notifications.Item>
              )}
              {game.roundRestartedAt && (
                <Notifications.Item>
                  The connection has been closed because the server is
                  restarting. Please wait while you automatically reconnect.
                </Notifications.Item>
              )}
            </Notifications>
          </Section>
        </Stack.Item>
      </Stack>
    </Pane>
  );
};
