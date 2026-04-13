.class public Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/ssl/TrustStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;->INSTANCE:Lorg/apache/hc/client5/http/ssl/TrustSelfSignedStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0

    array-length p1, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
