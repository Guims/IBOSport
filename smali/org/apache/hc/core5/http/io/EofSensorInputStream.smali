.class public Lorg/apache/hc/core5/http/io/EofSensorInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final eofWatcher:Lorg/apache/hc/core5/http/io/EofSensorWatcher;

.field private selfClosed:Z

.field private wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/io/EofSensorWatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Wrapped stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->selfClosed:Z

    iput-object p2, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->eofWatcher:Lorg/apache/hc/core5/http/io/EofSensorWatcher;

    return-void
.end method

.method private checkAbort()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->eofWatcher:Lorg/apache/hc/core5/http/io/EofSensorWatcher;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lorg/apache/hc/core5/http/io/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :goto_1
    iput-object v1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_2
    return-void
.end method

.method private checkClose()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->eofWatcher:Lorg/apache/hc/core5/http/io/EofSensorWatcher;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lorg/apache/hc/core5/http/io/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :goto_1
    iput-object v1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_2
    return-void
.end method

.method private checkEOF(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->eofWatcher:Lorg/apache/hc/core5/http/io/EofSensorWatcher;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/io/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object p1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_2
    return-void
.end method

.method private isReadAllowed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->selfClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->selfClosed:Z

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkAbort()V

    return-void
.end method

.method public available()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkAbort()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->selfClosed:Z

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkClose()V

    return-void
.end method

.method public getWrappedStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isSelfClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->selfClosed:Z

    return v0
.end method

.method public read()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkAbort()V

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;->checkAbort()V

    throw p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
