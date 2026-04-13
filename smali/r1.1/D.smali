.class public final Lr1/D;
.super Ljava/lang/Object;


# static fields
.field public static final e:LD0/c;

.field public static final f:LD0/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD0/c;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    sput-object v0, Lr1/D;->e:LD0/c;

    new-instance v0, LD0/c;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    sput-object v0, Lr1/D;->f:LD0/c;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr1/D;->a:I

    iput p2, p0, Lr1/D;->b:I

    iput-object p3, p0, Lr1/D;->c:Ljava/lang/String;

    iput-object p4, p0, Lr1/D;->d:Ljava/lang/String;

    return-void
.end method
