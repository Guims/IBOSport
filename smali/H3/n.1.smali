.class public final LH3/n;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/n;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/n;->a:LH3/n;

    const-string v0, "type"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/n;->b:LR3/c;

    const-string v0, "reason"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/n;->c:LR3/c;

    const-string v0, "frames"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/n;->d:LR3/c;

    const-string v0, "causedBy"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/n;->e:LR3/c;

    const-string v0, "overflowCount"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/n;->f:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/y0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/U;

    iget-object v0, p1, LH3/U;->a:Ljava/lang/String;

    sget-object v1, LH3/n;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/n;->c:LR3/c;

    iget-object v1, p1, LH3/U;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/n;->d:LR3/c;

    iget-object v1, p1, LH3/U;->c:Ljava/util/List;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/n;->e:LR3/c;

    iget-object v1, p1, LH3/U;->d:LH3/y0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/n;->f:LR3/c;

    iget p1, p1, LH3/U;->e:I

    invoke-interface {p2, v0, p1}, LR3/e;->c(LR3/c;I)LR3/e;

    return-void
.end method
