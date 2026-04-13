.class public final enum Lw5/M;
.super Ljava/lang/Enum;


# static fields
.field public static final enum q:Lw5/M;

.field public static final enum r:Lw5/M;

.field public static final enum s:Lw5/M;

.field public static final enum t:Lw5/M;

.field public static final enum u:Lw5/M;

.field public static final synthetic v:[Lw5/M;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lw5/M;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lw5/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lw5/M;->q:Lw5/M;

    new-instance v1, Lw5/M;

    const/4 v2, 0x1

    const-string v3, "TLSv1.2"

    const-string v4, "TLS_1_2"

    invoke-direct {v1, v4, v2, v3}, Lw5/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lw5/M;->r:Lw5/M;

    new-instance v2, Lw5/M;

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    const-string v5, "TLS_1_1"

    invoke-direct {v2, v5, v3, v4}, Lw5/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lw5/M;->s:Lw5/M;

    new-instance v3, Lw5/M;

    const/4 v4, 0x3

    const-string v5, "TLSv1"

    const-string v6, "TLS_1_0"

    invoke-direct {v3, v6, v4, v5}, Lw5/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lw5/M;->t:Lw5/M;

    new-instance v4, Lw5/M;

    const/4 v5, 0x4

    const-string v6, "SSLv3"

    const-string v7, "SSL_3_0"

    invoke-direct {v4, v7, v5, v6}, Lw5/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lw5/M;->u:Lw5/M;

    filled-new-array {v0, v1, v2, v3, v4}, [Lw5/M;

    move-result-object v0

    sput-object v0, Lw5/M;->v:[Lw5/M;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lw5/M;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw5/M;
    .locals 1

    const-class v0, Lw5/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw5/M;

    return-object p0
.end method

.method public static values()[Lw5/M;
    .locals 1

    sget-object v0, Lw5/M;->v:[Lw5/M;

    invoke-virtual {v0}, [Lw5/M;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw5/M;

    return-object v0
.end method
