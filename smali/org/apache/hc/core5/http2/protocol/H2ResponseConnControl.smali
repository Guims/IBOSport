.class public Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;
.super Lorg/apache/hc/core5/http/protocol/ResponseConnControl;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/ResponseConnControl;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p3}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ProtocolVersion;->getMajor()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/protocol/ResponseConnControl;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_0
    return-void
.end method
