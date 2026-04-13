.class public final Lg4/L;
.super LX4/c;


# instance fields
.field public b:Lg4/M;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lg4/M;

.field public s:I


# direct methods
.method public constructor <init>(Lg4/M;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lg4/L;->r:Lg4/M;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg4/L;->q:Ljava/lang/Object;

    iget p1, p0, Lg4/L;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg4/L;->s:I

    iget-object p1, p0, Lg4/L;->r:Lg4/M;

    invoke-static {p1, p0}, Lg4/M;->a(Lg4/M;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
