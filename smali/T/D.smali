.class public final LT/D;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/io/Serializable;

.field public s:Le5/m;

.field public t:Z

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:LT/I;

.field public x:I


# direct methods
.method public constructor <init>(LT/I;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/D;->w:LT/I;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/D;->v:Ljava/lang/Object;

    iget p1, p0, LT/D;->x:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/D;->x:I

    iget-object p1, p0, LT/D;->w:LT/I;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
