.class public final Lorg/apache/hc/client5/http/classic/ExecChain$Scope;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/classic/ExecChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# instance fields
.field public final clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field public final exchangeId:Ljava/lang/String;

.field public final execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

.field public final originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

.field public final route:Lorg/apache/hc/client5/http/HttpRoute;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecRuntime;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Exchange id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    const-string p1, "Route"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    const-string p1, "Original request"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    const-string p1, "Exec runtime"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/classic/ExecRuntime;

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    return-void
.end method
