import requests
import sys
import time

if __name__ =="__main__":
    url = "http://10.233.51.238:8202/smartInsights/getWorkflow"
    #feed_id ='pzKTtXcBhYoF8uCkSMMa'#340768
    #feed_id = 344831
    feed_id =  345034 #344933#342588#344831#339255#343744 #341389#339255#343658
#    feed_id = 344839
    user_id = 8
    token = "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJJQzdXUVBVMlllQWQtYzBZcEs3SGVIdmlJZ3VrNnhraHlYNjAtdUFGVnZvIn0.eyJqdGkiOiIxYTRlZDFhZi05MjRhLTRjYzYtYmZhYS1mNzlmM2ZiMGUzNDQiLCJleHAiOjE2Mzk1NDY4MzYsIm5iZiI6MCwiaWF0IjoxNjA4MDEwODUyLCJpc3MiOiJodHRwczovL2RrLmdpZ2dzby5jb20vYXV0aC9yZWFsbXMvZ2lnZ3NvIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6IjUyMDY5OWMxLTU3YjUtNDM2Yy05YTdjLTUzYTI3ZjQxMzA0OSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImFuZ3VsYXItY29ycyIsIm5vbmNlIjoiNmZmZmU2NWQtNjVlMS00YmIwLTg4YWMtYTJhNzJiMGU2MDEyIiwiYXV0aF90aW1lIjoxNjA4MDEwODM2LCJzZXNzaW9uX3N0YXRlIjoiMDU4NzY0MjEtMDA4Yy00Zjc0LTg4ZDgtZTBlNzQ3ZTNhMmZmIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyJodHRwOi8vbG9jYWxob3N0OjgwODAvZ2lnZ3NvX2tjLyIsImh0dHA6Ly8xMjcuMC4wLjE6NDIwMCIsImh0dHBzOi8vZGV2LmdpZ2dzby5jb20iLCJodHRwOi8vbG9jYWxob3N0IiwiaHR0cDovL2xvY2FsaG9zdDo0MjAwIiwiaHR0cDovL2xvY2FsaG9zdC9HaWdnem8tTWV0ZW9yL2NsaWVudCJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiIsImdndXNlciJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJBcnVuIGt1bWFyIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYXJ1bmt1bWFyLmdpZ2dzb0BnbWFpbC5jb20iLCJnaXZlbl9uYW1lIjoiQXJ1biIsImZhbWlseV9uYW1lIjoia3VtYXIiLCJlbWFpbCI6ImFydW5rdW1hci5naWdnc29AZ21haWwuY29tIn0.CKl17EGvYEdswb56Kb3HHfjcn0tj1IftyWLUtjDKGvak3LpyK54WSP3LnG2KwS-xt0Mwu0GXpBv9uCVhfTY5wLZTsfFevc1EOroP_u9Aa5cFH-U6gb009Helo_JYXy0GpJPvYyPLK4K2R_WqCyCAcWiOIBc8RMnknN30LxWMPhkPHAOrrtM-O8nr-rwQYxJ1XK2L_uY5bc60rdShD_JOfWuYOuGoygKfb5y7T7BEiQM8IfpN90oKXL_ggDGpZL2Ws88HKbRi_95NIKLxUrMuPHTLjJrrUlsd4MhVGW-V1rHtYJTV6lbFmCaf_zGRLhRXojv9amlbbu2-LwPGltcAiA"
    param = {
        "feedId": feed_id,
#        "index": "gglogs_2021.02.13-000002",
        "index": "ggmain",
        "token": token,
        "resourceId": user_id

    }
    start = time.time()
    res = requests.post(url=url, params=param)
    end = time.time()
    try:
        print(res.json())
    except:
        print(res)
    print(end-start)
