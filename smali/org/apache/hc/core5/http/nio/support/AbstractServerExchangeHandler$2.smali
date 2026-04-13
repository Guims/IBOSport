.class Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->releaseResources()V

    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->handle(Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->failed(Ljava/lang/Exception;)V

    goto :goto_3

    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;

    const/16 v1, 0x1f4

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/support/AsyncResponseBuilder;->create(I)Lorg/apache/hc/core5/http/nio/support/AsyncResponseBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/nio/support/AsyncResponseBuilder;->setEntity(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/support/AsyncResponseBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/support/AsyncResponseBuilder;->build()Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->failed(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$2;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
