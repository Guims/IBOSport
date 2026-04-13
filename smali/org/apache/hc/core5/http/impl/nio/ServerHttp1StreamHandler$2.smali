.class Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResponseChannel;


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


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->access$400(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)V

    return-void
.end method

.method public sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-static {p2, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->access$200(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/impl/ServerSupport;->validateResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V

    iget-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-static {p3, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->access$300(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;->this$0:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
