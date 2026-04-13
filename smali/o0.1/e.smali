.class public final Lo0/e;
.super Lorg/chromium/net/UrlRequest$Callback;


# instance fields
.field public volatile a:Z

.field public final synthetic b:Lo0/f;


# direct methods
.method public constructor <init>(Lo0/f;)V
    .locals 0

    iput-object p1, p0, Lo0/e;->b:Lo0/f;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo0/e;->a:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lo0/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/NetworkException;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    iput-object p2, p1, Lo0/f;->G:Ljava/io/IOException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    iput-object p3, p1, Lo0/f;->G:Ljava/io/IOException;

    :goto_0
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    iget-object p1, p1, Lo0/f;->w:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lo0/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    iget-object p1, p1, Lo0/f;->w:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lo0/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p3, p0, Lo0/e;->b:Lo0/f;

    iget-object p3, p3, Lo0/f;->B:Lorg/chromium/net/UrlRequest;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lo0/e;->b:Lo0/f;

    iget-object p3, p3, Lo0/f;->C:Lo0/e;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lo0/e;->b:Lo0/f;

    iget-object v5, p3, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    iget p3, v5, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const/16 p3, 0x133

    if-eq v1, p3, :cond_1

    const/16 p3, 0x134

    if-ne v1, p3, :cond_2

    :cond_1
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lk0/C;->f:[B

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    iput-object v0, p1, Lo0/f;->G:Ljava/io/IOException;

    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    iget-object p1, p1, Lo0/f;->w:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lo0/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    iput-object p2, p1, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    iget-object p1, p1, Lo0/f;->w:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lo0/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lo0/e;->b:Lo0/f;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo0/f;->H:Z

    iget-object p1, p1, Lo0/f;->w:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
