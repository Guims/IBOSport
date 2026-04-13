.class final Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;


# static fields
.field static final INSTANCE:Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;->INSTANCE:Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeData(Ljava/nio/ByteBuffer;Z)V
    .locals 0

    return-void
.end method

.method public consumeHeader(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public consumePromise(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public handle(Lorg/apache/hc/core5/http/HttpException;Z)V
    .locals 0

    return-void
.end method

.method public isOutputReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public produceOutput()V
    .locals 0

    return-void
.end method

.method public releaseResources()V
    .locals 0

    return-void
.end method

.method public updateInputCapacity()V
    .locals 0

    return-void
.end method
