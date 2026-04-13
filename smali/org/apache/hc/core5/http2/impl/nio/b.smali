.class public final synthetic Lorg/apache/hc/core5/http2/impl/nio/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/RequestChannel;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/b;->b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;

    return-void
.end method


# virtual methods
.method public final sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/b;->b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->a(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
