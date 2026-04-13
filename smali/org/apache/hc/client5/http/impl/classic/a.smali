.class public final synthetic Lorg/apache/hc/client5/http/impl/classic/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChain;


# instance fields
.field public final synthetic a:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/a;->a:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    return-void
.end method


# virtual methods
.method public final proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/a;->a:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method
