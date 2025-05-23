-- inputShow_Filter.lua
-- Copyright (C) 2023 yaoyuan.dou <douyaoyuan@126.com>
--[[
	这个脚本，作为filter来用，将以下 candsWillBeShown 中指定的字符放入translator选项中，以供后序程序使用
--]]

--引入 utf8String 处理字符串相关操作
local utf8StringEnable, utf8String = pcall(require, 'utf8String')

local logEnable, log = pcall(require, "runLog")
if logEnable then
	log.writeLog('')
	log.writeLog('log from inputShow_Filter.lua')
	log.writeLog('utf8StringEnable:'..tostring(utf8StringEnable))
end

--对于指定的输入符号，需要直接提供对应转换值的输入选项，供后处理使用
local candsWillBeShown={}
--以下单字母需要输出
candsWillBeShown['a']='a'
candsWillBeShown['b']='b'
candsWillBeShown['c']='c'
candsWillBeShown['d']='d'
candsWillBeShown['e']='e'
candsWillBeShown['f']='f'
candsWillBeShown['g']='g'
candsWillBeShown['h']='h'
candsWillBeShown['i']='i'
candsWillBeShown['j']='j'
candsWillBeShown['k']='k'
candsWillBeShown['l']='l'
candsWillBeShown['m']='m'
candsWillBeShown['n']='n'
candsWillBeShown['o']='o'
candsWillBeShown['p']='p'
candsWillBeShown['q']='q'
candsWillBeShown['r']='r'
candsWillBeShown['s']='s'
candsWillBeShown['t']='t'
candsWillBeShown['u']='u'
candsWillBeShown['v']='v'
candsWillBeShown['w']='w'
candsWillBeShown['x']='x'
candsWillBeShown['y']='y'
candsWillBeShown['z']='z'

--以下是常用简写的输出
candsWillBeShown['id']='id'
candsWillBeShown['ip']='ip'

--以下是化学元素简写，需要输出
candsWillBeShown['he']='He'
candsWillBeShown['li']='Li'
candsWillBeShown['be']='Be'
candsWillBeShown['ne']='Ne'
candsWillBeShown['na']='Na'
candsWillBeShown['mg']='Mg'
candsWillBeShown['al']='Al'
candsWillBeShown['si']='Si'
candsWillBeShown['cl']='Cl'
candsWillBeShown['ar']='Ar'
candsWillBeShown['ca']='Ca'
candsWillBeShown['sc']='Sc'
candsWillBeShown['ti']='Ti'
candsWillBeShown['cr']='Cr'
candsWillBeShown['mn']='Mn'
candsWillBeShown['fe']='Fe'
candsWillBeShown['co']='Co'
candsWillBeShown['ni']='Ni'
candsWillBeShown['cu']='Cu'
candsWillBeShown['zn']='Zn'
candsWillBeShown['ga']='Ga'
candsWillBeShown['ge']='Ge'
candsWillBeShown['as']='As'
candsWillBeShown['se']='Se'
candsWillBeShown['br']='Br'
candsWillBeShown['kr']='Kr'
candsWillBeShown['rb']='Rb'
candsWillBeShown['sr']='Sr'
candsWillBeShown['zr']='Zr'
candsWillBeShown['nb']='Nb'
candsWillBeShown['mo']='Mo'
candsWillBeShown['tc']='Tc'
candsWillBeShown['ru']='Ru'
candsWillBeShown['rh']='Rh'
candsWillBeShown['pd']='Pd'
candsWillBeShown['ag']='Ag'
candsWillBeShown['cd']='Cd'
candsWillBeShown['in']='In'
candsWillBeShown['sn']='Sn'
candsWillBeShown['sb']='Sb'
candsWillBeShown['te']='Te'
candsWillBeShown['xe']='Xe'
candsWillBeShown['cs']='Cs'
candsWillBeShown['ba']='Ba'
candsWillBeShown['la']='La'
candsWillBeShown['ce']='Ce'
candsWillBeShown['pr']='Pr'
candsWillBeShown['nd']='Nd'
candsWillBeShown['pm']='Pm'
candsWillBeShown['sm']='Sm'
candsWillBeShown['eu']='Eu'
candsWillBeShown['gd']='Gd'
candsWillBeShown['tb']='Tb'
candsWillBeShown['dy']='Dy'
candsWillBeShown['ho']='Ho'
candsWillBeShown['er']='Er'
candsWillBeShown['tm']='Tm'
candsWillBeShown['yb']='Yb'
candsWillBeShown['lu']='Lu'
candsWillBeShown['hf']='Hf'
candsWillBeShown['ta']='Ta'
candsWillBeShown['re']='Re'
candsWillBeShown['os']='Os'
candsWillBeShown['ir']='Ir'
candsWillBeShown['pt']='Pt'
candsWillBeShown['au']='Au'
candsWillBeShown['hg']='Hg'
candsWillBeShown['tl']='Tl'
candsWillBeShown['pb']='Pb'
candsWillBeShown['bi']='Bi'
candsWillBeShown['po']='Po'
candsWillBeShown['at']='At'
candsWillBeShown['rn']='Rn'
candsWillBeShown['fr']='Fr'
candsWillBeShown['ra']='Ra'
candsWillBeShown['ac']='Ac'
candsWillBeShown['th']='Th'
candsWillBeShown['pa']='Pa'
candsWillBeShown['np']='Np'
candsWillBeShown['pu']='Pu'
candsWillBeShown['am']='Am'
candsWillBeShown['cm']='Cm'
candsWillBeShown['bk']='Bk'
candsWillBeShown['cf']='Cf'
candsWillBeShown['es']='Es'
candsWillBeShown['fm']='Fm'
candsWillBeShown['md']='Md'
candsWillBeShown['no']='No'
candsWillBeShown['lr']='Lr'
candsWillBeShown['rf']='Rf'
candsWillBeShown['db']='Db'
candsWillBeShown['sg']='Sg'
candsWillBeShown['bh']='Bh'
candsWillBeShown['hs']='Hs'
candsWillBeShown['mt']='Mt'
candsWillBeShown['ds']='Ds'
candsWillBeShown['rg']='Rg'
candsWillBeShown['cn']='Cn'
candsWillBeShown['nh']='Nh'
candsWillBeShown['fl']='Fl'
candsWillBeShown['mc']='Mc'
candsWillBeShown['lv']='Lv'
candsWillBeShown['ts']='Ts'
candsWillBeShown['og']='Og'

local wordFirsPosfix = 'z'
local wordFirstFlg = false

local candsCnt = 0
local candsIdx = 0

local function _inputShow(input, env)
	local charCands = {}
	local wordCands = {}
	local cands = {}
	local inputStr = tostring(env.engine.context.input)
	local inputStrLen = string.len(inputStr)
	local candsWillBeShownStr = candsWillBeShown[inputStr]
	
	wordFirstFlg = false
	if inputStrLen > 0 then
		if wordFirsPosfix == inputStr:sub(inputStrLen) then
			wordFirstFlg = true
		end
	end
	
	candsIdx = 0
	candsCnt = 0
	for cand in input:iter() do
		if 1 == inputStrLen then
			if '~' ~= string.sub(cand.comment,1,1) then
				-- 如果输入的字符数量为1，则只出一简字
				table.insert(charCands, cand)
				candsCnt = candsCnt + 1
			end
			if candsIdx > 10 then
				break
			end
		else
			if utf8String.utf8Len(cand.text) > 1 then
				-- 3码以上才出词
				if inputStrLen > 2 then
					table.insert(wordCands, cand)
					candsCnt = candsCnt + 1
				end
			else
				table.insert(charCands, cand)
				candsCnt = candsCnt + 1
			end
		end
		
		table.insert(cands, cand)
		if 1 == candsCnt then
			if candsWillBeShownStr then
				table.insert(charCands, Candidate("inputShow", 0, inputStrLen, candsWillBeShownStr, ''))
				table.insert(cands, Candidate("inputShow", 0, inputStrLen, candsWillBeShownStr, ''))
			end
		end
		
		candsIdx = candsIdx + 1
	end
	
	-- 如果没有候选项，但是存在 inputShow 选项，则单独抛出该选项
	if 0 == candsCnt then
		if candsWillBeShownStr then
			table.insert(charCands, Candidate("inputShow", 0, inputStrLen, candsWillBeShownStr, ''))
			table.insert(cands, Candidate("inputShow", 0, inputStrLen, candsWillBeShownStr, ''))
		end
	end
	
	-- 在五笔中，3码以上，则按原顺序抛候选项
	if inputStrLen > 3 and not wordFirstFlg then
		for idx=1,#cands do
			yield(cands[idx])
		end
	else
		if wordFirstFlg then
			for idx=1,#wordCands do
				yield(wordCands[idx])
			end
			for idx=1,#charCands do
				yield(charCands[idx])
			end
		else
			for idx=1,#charCands do
				yield(charCands[idx])
			end
			for idx=1,#wordCands do
				yield(wordCands[idx])
			end
		end
	end
end

local function inputShow(input, env)
	--获取debug选项开关状态
	--local debugSwitchSts = env.engine.context:get_option("debug")
	
	_inputShow(input,env)
end

return inputShow
