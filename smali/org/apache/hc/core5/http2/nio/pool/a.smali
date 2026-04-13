.class public final synthetic Lorg/apache/hc/core5/http2/nio/pool/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:Lorg/apache/hc/core5/reactor/IOSession;

.field public final synthetic b:Lorg/apache/hc/core5/util/Timeout;

.field public final synthetic c:Lorg/apache/hc/core5/function/Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->a:Lorg/apache/hc/core5/reactor/IOSession;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->b:Lorg/apache/hc/core5/util/Timeout;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->c:Lorg/apache/hc/core5/function/Callback;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->c:Lorg/apache/hc/core5/function/Callback;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->a:Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/nio/pool/a;->b:Lorg/apache/hc/core5/util/Timeout;

    invoke-static {v1, v2, v0, p1}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->a(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Ljava/lang/Boolean;)V

    return-void
.end method
