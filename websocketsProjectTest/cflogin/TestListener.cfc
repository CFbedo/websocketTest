component extends="CFIDE.websocket.ChannelListener" 
{ 
public any function beforeSendMessage(any message, Struct subscriberInfo) 
  { 
      writedump(var=subscriberInfo.connectionInfo, output="console"); 
         return subscriberInfo.connectionInfo; 
  } 
     
}