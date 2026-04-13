.class public final LV/j;
.super LX4/c;


# instance fields
.field public b:LK5/s;

.field public q:LK5/s;

.field public r:LK5/y;

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:LV/k;

.field public u:I


# direct methods
.method public constructor <init>(LV/k;LX4/c;)V
    .locals 0

    iput-object p1, p0, LV/j;->t:LV/k;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LV/j;->s:Ljava/lang/Object;

    iget p1, p0, LV/j;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LV/j;->u:I

    iget-object p1, p0, LV/j;->t:LV/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LV/k;->b(Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
