<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</head>
<body>
    <p align="center" class="MsoNormal" style="text-align:center">
        <b style="mso-bidi-font-weight:
normal"><u><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">BK 
        Birla institute of engineering &amp; Technology (BKBIET),Pilani.<o:p></o:p></span></u></b></p>
    <p align="center" class="MsoNormal" style="text-align:center">
        <b style="mso-bidi-font-weight:
normal"><u><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Operating system assignment<o:p></o:p></span></u></b></p>
    <p align="center" class="MsoNormal" style="text-align:center">
        <b style="mso-bidi-font-weight:
normal"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Max 
        Marks: 50<span style="mso-tab-count:6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Submission Date: 26<sup>th</sup> March, Friday<o:p></o:p></span></b></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Q1.A 
        system has jukebox CD-RW The jukebaox is loaded with blank CD ROM media, and can 
        load and burn CD ROM without human intervention. A spooling program controls 
        access to CD RW applications wishing to burn CD ROMs send a message to spooler 
        which hands over control of the CD-RW to that application. The spooler takes all 
        the massage it receives from the application and writes them to the CD RW. A 
        message length 0 closes the session. The application retains control of the CD 
        RW until it closes the session. The spooler returns massage to application 
        indicating whether the CD ROM was burned successfully. Show how
        <b style="mso-bidi-font-weight:normal"><i style="mso-bidi-font-style:normal"><u>
        send –process</u></i></b> and <b style="mso-bidi-font-weight:normal">
        <i style="mso-bidi-font-style:normal"><u>receive –process</u></i></b> could be 
        used to implement this software.<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Q2. 
        Write a program to creates two childs . Each child Process reads from a 
        different serial line and sends the character read back to parent process 
        through a pie. The parent process outputs all characters received. A child 
        terminates when exclamation point character is received. The parent process 
        terminates after both children have terminate. Use
        <b style="mso-bidi-font-weight:
normal"><i style="mso-bidi-font-style:normal"><u>send –pipe and receive –pipe</u></i></b> 
        primitives.<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Q3. An 
        application that produces and consumes data is to be written using two process . 
        Process 1 executes the function produce to generate data, and process2 executes 
        function consume to consumer the dat. Using function
        <b style="mso-bidi-font-weight:normal"><u>send_signal and react_signal</u></b> , 
        write the code for two process such that process 1’s calls to produce with 
        process 2’s calls to consume.<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Q4.A 
        weather station computer system automatically predicts the weather based on 
        input from three measure ring device. Each measuring device is running separate 
        process that performs some observations and when finished. Places the data into 
        a SHARED buffer . When all three measuring processes have place their 
        observations into buffer a calculation process is signaled. The calculation 
        process takes the observation, performs some calculations and predicts the 
        weather. All four processes are started at the same time. All the measuring 
        processes use the following code <o:p></o:p></span>
    </p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Void 
        main( )<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">{ <o:p></o:p>
        </span>
    </p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Shared_buffer * buffer;<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Result 
        *results;<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Results= 
        make_observation( );<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Add_observation(buffer,results);<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">}<br style="mso-special-character:
line-break" />
        <![if !supportLineBreakNewLine]>
        <br style="mso-special-character:line-break" />
        <![endif]><o:p></o:p></span>
    </p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-size:13.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        //The calculation process uses the following code.<o:p></o:p></span></u></b></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p>
        <span style="text-decoration:none">&nbsp;</span></o:p></span></u></b></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Void 
        main ( )<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">{ <o:p></o:p>
        </span>
    </p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Shared_buffer * buffer;<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Result 
        *results1 , *results2, *results3;<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Get_results(buffer, results1 , results2, results3);<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Calculate(results1 , results2, results3);<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">}<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Use 
        semaphore modify the above code so that mutual exclusion<span 
            style="mso-spacerun:yes">&nbsp; </span>on the shared buffer is guaranteed <o:p></o:p>
        </span>
    </p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">And it 
        forces the calculation process to wait for the observation processes to finish.<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Q5. To 
        drink a thirsty person must have three things water, ice and a glass. There are 
        three thirsty people, each having different one (and only one) of the three 
        required items. A fourth person, a server, ahs unlimited supply of all three 
        items If nobody is drinking, server places two of three items (chosen @ random) 
        onto a table. The thirsty person which can make a drink from those items will 
        pick them and drink a glass of ice water. When done the thirsty person will 
        notify the server and process will repeat, Write a code to control thirsty 
        people and the server in the following program, <o:p></o:p></span>
    </p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">// 
        Server<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">While 
        (ture)<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">{<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Drinkers.serve( );<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">}<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">// 
        Drinker (type is water or ice or glass)<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">While 
        (true)<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">{<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Drinkers.GetIngredients(type);<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Drink 
        ();<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        Drinkers.Notifyserver(type);<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">}<o:p></o:p></span></p>
    <p class="MsoNormal" style="text-align:justify;line-height:normal">
        <span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
        <span style="mso-spacerun:yes">&nbsp;</span><o:p></o:p></span></p>
</body>
</html>
