class CfgRemoteExec
{

      class Functions
      {
              // RemoteExec modes:
              // 0-turned off
              // 1-turned on, taking whitelist into account
              // 2-turned on, ignoring whitelist (default, because of backward compatibility)
              mode = 2;
              // Ability to send jip messages: 0-disabled, 1-enabled (default)
              jip = 1;              
      };
};
