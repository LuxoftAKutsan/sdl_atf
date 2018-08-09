--- Module which provides ATF configuration and predefined mobile application data
--
-- *Dependencies:* none
--
-- *Globals:* none
-- @copyright [Ford Motor Company](https://smartdevicelink.com/partners/ford/) and [SmartDeviceLink Consortium](https://smartdevicelink.com/consortium/)
-- @license <https://github.com/smartdevicelink/sdl_core/blob/master/LICENSE>

local config = { }
--- Flag which defines usage of color for reporting
config.color = true

--- Remote cofiguration
config.remoteConnection = {}
config.remoteConnection.enabled = true
config.remoteConnection.url = "192.168.1.26"
config.remoteConnection.port = 5555

--- HMI configuration
config.hmiAdapterConfig = {}
config.hmiAdapterConfig.hmiAdapterType = "Remote"
--- Define configuration parameters for HMI connection on WebSocket base
config.hmiAdapterConfig.WebSocket = {}
config.hmiAdapterConfig.WebSocket.url = "ws://localhost"
config.hmiAdapterConfig.WebSocket.port = 8087
--- Define configuration parameters for Remote HMI connection
config.hmiAdapterConfig.Remote = {}
-- Define configuration parameters of HMItoSDL Mq
-- for Remote HMI connection
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig = {}
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig.name = "/ToSDL"
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig.max_messages_number = 128
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig.max_message_size = 4095
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig.flags = 257 -- O_WRONLY | O_CREAT
config.hmiAdapterConfig.Remote.HMItoSDLMqConfig.mode = 1638 -- S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH
-- Define configuration parameters of SDLtoHMI Mq
-- for Remote HMI connection
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig = {}
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig.name = "/FromSDL"
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig.max_messages_number = 128
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig.max_message_size = 4095
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig.flags = 256 -- O_RDONLY | O_CREAT
config.hmiAdapterConfig.Remote.SDLtoHMIMqConfig.mode = 1638 -- S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH
-- Define configuration parameters of shared memories
-- for Remote HMI connection
config.hmiAdapterConfig.Remote.sharedMemoryConfig = {{}, {}, {}}
config.hmiAdapterConfig.Remote.sharedMemoryConfig[1].name = "/SHNAME_SDLQUEUE"
config.hmiAdapterConfig.Remote.sharedMemoryConfig[1].prot = 512 -- PROT_WRITE
config.hmiAdapterConfig.Remote.sharedMemoryConfig[2].name = "/SHNAME_SDLQUEUE2"
config.hmiAdapterConfig.Remote.sharedMemoryConfig[2].prot = 256 -- PROT_READ
config.hmiAdapterConfig.Remote.sharedMemoryConfig[3].name = "/SHNAME_SDLQUEUE3"
config.hmiAdapterConfig.Remote.sharedMemoryConfig[3].prot = 256 -- PROT_READ

--- Control configuration (Ford: Applink)
-- Define configuration parameters of control (AppLinkSDLProxy) Mq
-- for Remote connection
config.controlMqConfig = {}
config.controlMqConfig.name = "/AppLinkSDLProxy"
config.controlMqConfig.max_messages_number = 128
config.controlMqConfig.max_message_size = 4095
config.controlMqConfig.flags = 257 -- O_WRONLY | O_CREAT
config.controlMqConfig.mode = 1638 -- S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH

--- Define host for default mobile device connection
config.mobileHost = "192.168.1.2"
--- Define port for default mobile device connection
config.mobilePort = 12346
--- Define timeout for Heartbeat in msec
config.heartbeatTimeout = 7000
--- Define timeout to wait for the events that should not occur
config.zeroOccurrenceTimeout = 2000
--- Flag which defines whether ATF checks all validations for particular expectation or just till the first which fails
config.checkAllValidations = false
--- Define default version of Ford protocol
-- 1 - basic
--
-- 2 - RPC, encryption
--
-- 3 - video/audio streaming, heartbeat
-- 4 - SDL 4.0
config.defaultProtocolVersion = 3
--- Define path to SDL binary
-- Example: "/home/user/sdl_build/bin"
config.pathToSDL = ""
--- Define path to SDL .INI file
config.pathToSDLConfig = "/etc/AppLink"
--- Define path to SDL interfaces
-- Example: "/home/user/sdl_panasonic/src/components/interfaces"
config.pathToSDLInterfaces = ""
--- Define SDL modification
config.SDL = "SmartDeviceLink"
--- Definehost for SDL logs
config.sdl_logs_host = "192.168.1.26"
--- Define port for SDL logs
config.sdl_logs_port = 6676
--- Flag which defines behavior of ATF on SDL crash
config.ExitOnCrash = true
--- Flag which defines whether ATF starts SDL on startup
config.autorunSDL = true
--- Security
--
--- Define security protocol
config.SecurityProtocol = "DTLS"
--- Define ciphers
config.cipherListString = "ALL:!ADH:!LOW:!EXP:!MD5:@STRENGTH"
--- Define path to server certificate with public key
config.serverCertificatePath = "./data/cert/spt_credential.pem"
--- Define path to server private key
config.serverPrivateKeyPath = "./data/cert/spt_credential.pem"
--- Define path to server CA certificates chain for client certificate validation
config.serverCAChainCertPath = "./data/cert/spt_credential.pem"
--- Define whether client certificate validation needed
config.isCheckClientCertificate = true
--- Logs and Reports
--
--- Flag which defines whether ATF displays time of test step run
config.ShowTimeInConsole = true
--- Flag which defines whether ATF performs validation of Mobile and HMI messages by API
config.ValidateSchema = true
--- Flag which defines whether ATF ignores collecting of reports
config.excludeReport = false
--- Flag which defines whether ATF creates full ATF logs (with json files and service messages)
config.storeFullATFLogs = true
--- Flag which defines whether ATF stores full SDLCore logs
config.storeFullSDLLogs = true
--- Define path to collected ATF and SDL logs
config.reportPath = "./TestingReports"
--- Define delays for storing sdl log -"x" before start script
-- and +"x" after end script execution. In milliseconds(ms).
config.x_sdllog = 100

--- Predefined mobile application data (application1)
config.application1 =
{
  registerAppInterfaceParams =
  {
    syncMsgVersion =
    {
      majorVersion = 3,
      minorVersion = 0
    },
    appName = "Test Application",
    isMediaApplication = true,
    languageDesired = 'EN-US',
    hmiDisplayLanguageDesired = 'EN-US',
    appHMIType = { "NAVIGATION" },
    appID = "0000001",
    deviceInfo =
    {
      os = "Android",
      carrier = "Megafon",
      firmwareRev = "Name: Linux, Version: 3.4.0-perf",
      osVersion = "4.4.2",
      maxNumberRFCOMMPorts = 1
    }
  }
}

--- Predefined mobile application data (application2)
config.application2 =
{
  registerAppInterfaceParams =
  {
    syncMsgVersion =
    {
      majorVersion = 3,
      minorVersion = 0
    },
    appName = "Test Application2",
    isMediaApplication = true,
    languageDesired = 'EN-US',
    hmiDisplayLanguageDesired = 'EN-US',
    appHMIType = { "NAVIGATION" },
    appID = "0000002",
    deviceInfo =
    {
      os = "Android",
      carrier = "Megafon",
      firmwareRev = "Name: Linux, Version: 3.4.0-perf",
      osVersion = "4.4.2",
      maxNumberRFCOMMPorts = 1
    }
  }
}

--- Predefined mobile application data (application3)
config.application3 =
{
  registerAppInterfaceParams =
  {
    syncMsgVersion =
    {
      majorVersion = 3,
      minorVersion = 0
    },
    appName = "Test Application3",
    isMediaApplication = true,
    languageDesired = 'EN-US',
    hmiDisplayLanguageDesired = 'EN-US',
    appHMIType = { "NAVIGATION" },
    appID = "0000003",
    deviceInfo =
    {
      os = "Android",
      carrier = "Megafon",
      firmwareRev = "Name: Linux, Version: 3.4.0-perf",
      osVersion = "4.4.2",
      maxNumberRFCOMMPorts = 1
    }
  }
}

--- Predefined mobile application data (application4)
config.application4 =
{
  registerAppInterfaceParams =
  {
    syncMsgVersion =
    {
      majorVersion = 3,
      minorVersion = 0
    },
    appName = "Test Application4",
    isMediaApplication = true,
    languageDesired = 'EN-US',
    hmiDisplayLanguageDesired = 'EN-US',
    appHMIType = { "NAVIGATION" },
    appID = "0000004",
    deviceInfo =
    {
      os = "Android",
      carrier = "Megafon",
      firmwareRev = "Name: Linux, Version: 3.4.0-perf",
      osVersion = "4.4.2",
      maxNumberRFCOMMPorts = 1
    }
  }
}

--- Predefined mobile application data (application5)
config.application5 =
{
  registerAppInterfaceParams =
  {
    syncMsgVersion =
    {
      majorVersion = 3,
      minorVersion = 0
    },
    appName = "Test Application5",
    isMediaApplication = true,
    languageDesired = 'EN-US',
    hmiDisplayLanguageDesired = 'EN-US',
    appHMIType = { "NAVIGATION" },
    appID = "0000005",
    deviceInfo =
    {
      os = "Android",
      carrier = "Megafon",
      firmwareRev = "Name: Linux, Version: 3.4.0-perf",
      osVersion = "4.4.2",
      maxNumberRFCOMMPorts = 1
    }
  }
}

return config
