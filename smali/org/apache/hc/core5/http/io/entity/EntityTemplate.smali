.class public final Lorg/apache/hc/core5/http/io/entity/EntityTemplate;
.super Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final callback:Lorg/apache/hc/core5/io/IOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/io/IOCallback<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final contentLength:J


# direct methods
.method public constructor <init>(JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Lorg/apache/hc/core5/io/IOCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/hc/core5/http/ContentType;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/io/IOCallback<",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    iput-wide p1, p0, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;->contentLength:J

    const-string p1, "I/O callback"

    invoke-static {p5, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/io/IOCallback;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;->callback:Lorg/apache/hc/core5/io/IOCallback;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;->writeTo(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;->contentLength:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;->callback:Lorg/apache/hc/core5/io/IOCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/IOCallback;->execute(Ljava/lang/Object;)V

    return-void
.end method
