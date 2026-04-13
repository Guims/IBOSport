.class public Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;
.super Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final requestHandler:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;-><init>()V

    const-string v0, "Response handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;->requestHandler:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;->requestHandler:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;->handle(Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public supplyConsumer(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;->requestHandler:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;->prepare(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer;

    move-result-object p1

    return-object p1
.end method
