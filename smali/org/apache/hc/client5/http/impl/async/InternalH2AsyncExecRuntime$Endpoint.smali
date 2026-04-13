.class Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/util/Identifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Endpoint"
.end annotation


# instance fields
.field final session:Lorg/apache/hc/core5/reactor/IOSession;

.field final target:Lorg/apache/hc/core5/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->target:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
