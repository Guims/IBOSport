.class public Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/io/SessionInputBuffer;

.field private closed:Z

.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/io/SessionInputBuffer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionInputBuffer;

    const-string p1, "Input stream"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/io/SessionInputBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionInputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->inputStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/io/SessionInputBuffer;->read(Ljava/io/InputStream;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/StreamClosedException;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/StreamClosedException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionInputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;->inputStream:Ljava/io/InputStream;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/hc/core5/http/io/SessionInputBuffer;->read([BIILjava/io/InputStream;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/StreamClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/StreamClosedException;-><init>()V

    throw p1
.end method
