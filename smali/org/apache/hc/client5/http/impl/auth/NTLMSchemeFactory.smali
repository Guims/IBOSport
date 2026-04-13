.class public Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 0

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;-><init>()V

    return-object p1
.end method
