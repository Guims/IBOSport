.class public Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/UserTokenHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
