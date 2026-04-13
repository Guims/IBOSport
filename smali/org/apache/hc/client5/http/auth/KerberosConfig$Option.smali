.class public final enum Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/auth/KerberosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field public static final enum DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field public static final enum DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field public static final enum ENABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    new-instance v1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    const-string v2, "ENABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->ENABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    new-instance v2, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    const-string v3, "DISABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->$VALUES:[Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->$VALUES:[Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-virtual {v0}, [Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object v0
.end method
