.class public final LT/M;
.super LX4/c;


# instance fields
.field public b:LK1/c;

.field public q:Lu5/a;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:LK1/c;

.field public t:I


# direct methods
.method public constructor <init>(LK1/c;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/M;->s:LK1/c;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/M;->r:Ljava/lang/Object;

    iget p1, p0, LT/M;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/M;->t:I

    iget-object p1, p0, LT/M;->s:LK1/c;

    invoke-virtual {p1, p0}, LK1/c;->z(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
