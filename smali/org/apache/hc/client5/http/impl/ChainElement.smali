.class public final enum Lorg/apache/hc/client5/http/impl/ChainElement;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/client5/http/impl/ChainElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum BACK_OFF:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum CACHING:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum COMPRESS:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum CONNECT:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum PROTOCOL:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum REDIRECT:Lorg/apache/hc/client5/http/impl/ChainElement;

.field public static final enum RETRY:Lorg/apache/hc/client5/http/impl/ChainElement;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v1, "REDIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/ChainElement;->REDIRECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v1, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v2, "COMPRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->COMPRESS:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v2, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v3, "BACK_OFF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/client5/http/impl/ChainElement;->BACK_OFF:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v3, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v4, "RETRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/client5/http/impl/ChainElement;->RETRY:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v4, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v5, "CACHING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/hc/client5/http/impl/ChainElement;->CACHING:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v5, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v6, "PROTOCOL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/hc/client5/http/impl/ChainElement;->PROTOCOL:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v6, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v7, "CONNECT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/hc/client5/http/impl/ChainElement;->CONNECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    new-instance v7, Lorg/apache/hc/client5/http/impl/ChainElement;

    const-string v8, "MAIN_TRANSPORT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/hc/client5/http/impl/ChainElement;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/hc/client5/http/impl/ChainElement;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/ChainElement;->$VALUES:[Lorg/apache/hc/client5/http/impl/ChainElement;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/ChainElement;
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/impl/ChainElement;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/client5/http/impl/ChainElement;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/ChainElement;->$VALUES:[Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v0}, [Lorg/apache/hc/client5/http/impl/ChainElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/client5/http/impl/ChainElement;

    return-object v0
.end method
