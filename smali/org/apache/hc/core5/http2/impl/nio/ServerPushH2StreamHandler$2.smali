.class Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResponseChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->produceOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$2;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$2;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    invoke-static {p3, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->access$300(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V

    return-void
.end method

.method public sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$2;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    invoke-static {p2, p1}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->access$100(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler$2;->this$0:Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;

    invoke-static {p3, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;->access$200(Lorg/apache/hc/core5/http2/impl/nio/ServerPushH2StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method
