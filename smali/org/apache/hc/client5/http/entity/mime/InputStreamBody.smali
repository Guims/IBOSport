.class public Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;
.super Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;


# instance fields
.field private final contentLength:J

.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;-><init>(Lorg/apache/hc/core5/http/ContentType;)V

    const-string p2, "Input stream"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->filename:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p4, -0x1

    :goto_0
    iput-wide p4, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->contentLength:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
