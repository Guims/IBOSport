.class final enum Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/auth/DigestScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityOfProtection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

.field public static final enum AUTH:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

.field public static final enum AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

.field public static final enum MISSING:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

.field public static final enum UNKNOWN:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->UNKNOWN:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    const-string v2, "MISSING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->MISSING:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    new-instance v2, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    const-string v3, "AUTH_INT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    new-instance v3, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    const-string v4, "AUTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->$VALUES:[Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->$VALUES:[Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    invoke-virtual {v0}, [Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    return-object v0
.end method
