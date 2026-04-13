.class public Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

.field private closed:Z

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    const-string p1, "Output stream"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->closed:Z

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->flush(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->flush(Ljava/io/OutputStream;)V

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->write(ILjava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/StreamClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/StreamClosedException;-><init>()V

    throw p1
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->buffer:Lorg/apache/hc/core5/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/hc/core5/http/io/SessionOutputBuffer;->write([BIILjava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/StreamClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/StreamClosedException;-><init>()V

    throw p1
.end method
