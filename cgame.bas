function load(n as string)as string
    dim ss(100) as string
    dim t as integer=1
    dim c as integer=0
    dim nn as integer=0
    dim h as integer
    dim sn as string=""
    open n for input as #1
    while not(eof(1))
        line input #1,ss(c)
        
        c=c+1
    wend 
    close #1
    for nn=0 to c
        
        sn=rtrim(ltrim(ss(nn)))
        h=instr(sn,"=")
        
        if h<1 then 
            h=0
            if sn<>"" then print str(nn)+" "+ sn
            ss(nn)=""
        else 
            h=h-1
            if sn<>"" then  print str(nn)+" "+mid(sn,1,h)
            ss(nn)=mid(sn,h+2,len(sn)-h)
        end if
    
    next
    input "get me a value  ";sn 
    nn=val(sn)
    sn=ss(nn)   
    print(sn)       
        
return sn
end function
dim t as string
dim tt as integer=1
dim s as string
dim ss as string
dim b as string
dim h as integer
dim hh as integer
t="main.txt"
s=t
color 0,6
cls
b=t
while tt
    
    if t="" then 
        tt=0
    else
        h=instr(t,"!")
        
        if h<1 then 
            h=0
            
            hh=instr(t,".")
            if hh<1 then hh=len(t)
            ss=mid(t,1,hh)+"mp4"
            print(ss)
            shell "explorer.exe " +ss
            if s<>"" then s=load(t)
            t=s
        else 
            h=h-1
            
            hh=instr(t,".")
            if hh<1 then hh=len(t)
            ss=mid(t,1,hh)+"mp4"
            print(ss)
            shell "explorer.exe " +ss
            if s<>"" then  s=load(mid(t,1,h))
            t=s
        end if

        
        
    end if 
wend 
