.class public Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;->INSTANCE:Lorg/apache/hc/client5/http/ssl/NoopHostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NO_OP"

    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
