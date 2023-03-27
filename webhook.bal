import ballerinax/trigger.google.drive;
import ballerina/http;

configurable drive:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener drive:Listener webhookListener =  new(config,httpListener);

service drive:DriveService on webhookListener {
  
    remote function onFileCreate(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onFolderCreate(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onFileUpdate(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onFolderUpdate(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onDelete(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onFileTrash(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
    remote function onFolderTrash(drive:Change changeInfo ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}