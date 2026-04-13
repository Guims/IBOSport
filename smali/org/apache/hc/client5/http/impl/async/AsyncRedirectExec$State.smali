.class Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field volatile currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field volatile currentRequest:Lorg/apache/hc/core5/http/HttpRequest;

.field volatile currentScope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field volatile maxRedirects:I

.field volatile redirectCount:I

.field volatile redirectLocations:Lorg/apache/hc/client5/http/protocol/RedirectLocations;

.field volatile redirectURI:Ljava/net/URI;

.field volatile reroute:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;-><init>()V

    return-void
.end method
