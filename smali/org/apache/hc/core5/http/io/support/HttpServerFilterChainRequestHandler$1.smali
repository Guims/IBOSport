.class Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;->handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;

.field final synthetic val$trigger:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;->this$0:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;->val$trigger:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendInformation(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;->val$trigger:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;->sendInformation(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    return-void
.end method

.method public submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;->val$trigger:Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    return-void
.end method
