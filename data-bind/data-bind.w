<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:473px;left:566px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="Data-Bind"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">Data-Bind</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <p>User：
        <input type="text" bind-textInput="user"/>
      </p>  
      <p>say：
        <input type="text" bind-value="say,valueUpdate: 'afterkeydown'"/>
      </p>  
      <p>Result：
        <span bind-text="result" /><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-text="result_output"></div>
      </p> 
    </div> 
  </div> 
</div>
