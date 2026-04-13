.class Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

.field final synthetic val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->endStream(Ljava/util/List;)V

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->complete(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->access$000(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->close()V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->access$102(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;->val$outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
