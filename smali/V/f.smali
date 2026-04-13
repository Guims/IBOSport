.class public final LV/f;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ljava/util/LinkedHashSet;

.field public static final f:LW3/e;


# instance fields
.field public final a:LK5/n;

.field public final b:Ld5/p;

.field public final c:LX/e;

.field public final d:LS4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, LV/f;->e:Ljava/util/LinkedHashSet;

    new-instance v0, LW3/e;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    sput-object v0, LV/f;->f:LW3/e;

    return-void
.end method

.method public constructor <init>(LK5/n;LX/e;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/f;->a:LK5/n;

    sget-object p1, LV/d;->b:LV/d;

    iput-object p1, p0, LV/f;->b:Ld5/p;

    iput-object p2, p0, LV/f;->c:LX/e;

    new-instance p1, LV/e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LV/e;-><init>(LV/f;I)V

    new-instance p2, LS4/g;

    invoke-direct {p2, p1}, LS4/g;-><init>(Ld5/a;)V

    iput-object p2, p0, LV/f;->d:LS4/g;

    return-void
.end method
