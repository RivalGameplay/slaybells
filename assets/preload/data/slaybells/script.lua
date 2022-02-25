local xx = 1100;
local yy = 350;
local xx2 = 1150;
local xx3 = 900;
local xx4 = 700;
local yy2 = 350;
local yy3 = 300;
local yy4 = 0
local ofs = 20;
local ofs2 = 15;
local ofs3 = 20;
local drain = 1;
local followchars = true;

function onUpdate()
    if mustHitSection == true then
		setProperty('defaultCamZoom',0.9)
	else
		setProperty('defaultCamZoom',0.80)
        if gfSection == true then
            setProperty('defaultCamZoom',0.85)
        end
	end
    if not lowQuality then
        if followchars == true then
            if mustHitSection == false then
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx4-ofs,yy4)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx4+ofs,yy4)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx4,yy4-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx4,yy4+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx4,yy4)
                end
                if gfSection == true then
                    if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx3-ofs3,yy3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx3+ofs3,yy3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx3,yy3)
                    end
                end
            else
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                end
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
    end
end