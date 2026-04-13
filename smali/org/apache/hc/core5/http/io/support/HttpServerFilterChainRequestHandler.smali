.class public Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpServerRequestHandler;


# instance fields
.field private final filterChain:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Filter chain"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;->filterChain:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;->filterChain:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    new-instance v1, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;

    invoke-direct {v1, p0, p2}, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler$1;-><init>(Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainRequestHandler;Lorg/apache/hc/core5/http/io/HttpServerRequestHandler$ResponseTrigger;)V

    invoke-virtual {v0, p1, v1, p3}, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
