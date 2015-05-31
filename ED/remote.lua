local kb = libs.keyboard;

actions.updateSystem1 = function (str)
  if (str ~= "") then
		layout.updateSystem1.hint = str;
		layout.echoSystem1.text = str;
		settings.system1 = str;
    layout.updateSystem1.text = "";
	end
end

actions.updateSystem2 = function (str)
	if (str ~= "") then
		layout.updateSystem2.hint = str;
		layout.echoSystem2.text = str;
		settings.system2 = str;
    layout.updateSystem2.text = "";
	end
end

actions.echoSystem1 = function ()
	kb.text(settings.system1);
end

actions.echoSystem2 = function ()
	kb.text(settings.system2);
end

events.preload = function()
  layout.echoSystem1.text = settings.system1;
  layout.updateSystem1.hint = settings.system1;
  layout.echoSystem2.text = settings.system2;
  layout.updateSystem2.hint = settings.system2;
end
