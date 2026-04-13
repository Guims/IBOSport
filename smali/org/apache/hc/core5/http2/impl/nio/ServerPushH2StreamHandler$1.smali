.class Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

.field final synthetic val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->access$002(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public endStream(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->endStream(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->access$002(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
