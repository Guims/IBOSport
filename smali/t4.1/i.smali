.class public abstract Lt4/i;
.super Landroid/os/AsyncTask;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Exception;

.field public c:Ljava/io/IOException;

.field public d:Lorg/json/JSONException;

.field public e:Lorg/apache/http/client/ClientProtocolException;

.field public f:Z

.field public g:Z

.field public h:Lt4/h;

.field public i:Lib/player/base/a;

.field public j:Lib/player/base/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt4/i;->f:Z

    iput-boolean v0, p0, Lt4/i;->g:Z

    iput-object p1, p0, Lt4/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lt4/i;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lt4/i;->b:Ljava/lang/Exception;

    return-object v0

    :catch_1
    move-exception p1

    iput-object p1, p0, Lt4/i;->c:Ljava/io/IOException;

    return-object v0

    :catch_2
    move-exception p1

    iput-object p1, p0, Lt4/i;->d:Lorg/json/JSONException;

    return-object v0

    :catch_3
    move-exception p1

    iput-object p1, p0, Lt4/i;->e:Lorg/apache/http/client/ClientProtocolException;

    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt4/i;->f:Z

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lt4/i;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt4/i;->e:Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lt4/i;->i:Lib/player/base/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lib/player/base/a;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lt4/i;->d:Lorg/json/JSONException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lt4/i;->i:Lib/player/base/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lib/player/base/a;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lt4/i;->c:Ljava/io/IOException;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lt4/i;->i:Lib/player/base/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lib/player/base/a;->a()V

    return-void

    :cond_3
    iget-object v0, p0, Lt4/i;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lt4/i;->i:Lib/player/base/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lib/player/base/a;->a()V

    return-void

    :cond_4
    iget-object v0, p0, Lt4/i;->h:Lt4/h;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lt4/h;->j(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt4/i;->f:Z

    iput-boolean v0, p0, Lt4/i;->g:Z

    iget-object v1, p0, Lt4/i;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lt4/i;->j:Lib/player/base/a;

    if-eqz v1, :cond_2

    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "Not aviable connection"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lib/player/base/a;->q:Lib/player/base/k;

    iget-boolean v2, v1, Lib/player/base/k;->W:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lib/player/base/k;->A(Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getUser_incorrect()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {v0}, Lib/player/base/k;->X(Z)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt4/i;->g:Z

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
