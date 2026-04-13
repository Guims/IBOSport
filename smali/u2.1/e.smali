.class public final Lu2/e;
.super Lu2/f;


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lu2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu2/e;->c:Ljava/lang/Object;

    new-instance v0, Lu2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu2/e;->d:Lu2/e;

    return-void
.end method

.method public static e(Landroid/app/Activity;ILx2/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lx2/j;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f130033

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f13003d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f130036

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p0, p1}, Lx2/j;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    invoke-static {p1, p0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p0, Lf/i;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    check-cast p0, Lf/i;

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p0

    new-instance v2, Lu2/k;

    invoke-direct {v2}, Lu2/k;-><init>()V

    invoke-static {p1, v0}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lu2/k;->z0:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    iput-object p3, v2, Lu2/k;->A0:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    invoke-virtual {v2, p0, p2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v2, Lu2/b;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lu2/b;->b:Landroid/app/Dialog;

    if-eqz p3, :cond_2

    iput-object p3, v2, Lu2/b;->q:Landroid/content/DialogInterface$OnCancelListener;

    :cond_2
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 3

    const-string v0, "d"

    invoke-super {p0, p2, p1, v0}, Lu2/f;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lx2/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lx2/k;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p2, v1, p3}, Lu2/e;->e(Landroid/app/Activity;ILx2/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, v0, p3}, Lu2/e;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final g(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "GMS core API Availability. ConnectionResult="

    const-string v4, ", tag=null"

    invoke-static {v3, v1, v4}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "GoogleApiAvailability"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    new-instance v1, Lu2/l;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v0}, Lu2/l;-><init>(Lu2/e;Landroid/content/Context;)V

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    move-object/from16 v3, p0

    const/4 v5, 0x6

    if-nez v2, :cond_2

    if-ne v1, v5, :cond_1

    const-string v0, "GoogleApiAvailability"

    const-string v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne v1, v5, :cond_3

    const-string v6, "common_google_play_services_resolution_required_title"

    invoke-static {v0, v6}, Lx2/j;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p2}, Lx2/j;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const v7, 0x7f13003a

    if-nez v6, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-eq v1, v5, :cond_6

    const/16 v5, 0x13

    if-ne v1, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p2}, Lx2/j;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {v0}, Lx2/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "common_google_play_services_resolution_required_text"

    invoke-static {v0, v8, v5}, Lx2/j;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lx2/o;->e(Ljava/lang/Object;)V

    check-cast v9, Landroid/app/NotificationManager;

    new-instance v10, Ly/k;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Ly/k;->b:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v10, Ly/k;->c:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v10, Ly/k;->d:Ljava/util/ArrayList;

    iput-boolean v4, v10, Ly/k;->i:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Ly/k;->k:Z

    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    iput-object v13, v10, Ly/k;->o:Landroid/app/Notification;

    iput-object v0, v10, Ly/k;->a:Landroid/content/Context;

    const/4 v14, 0x0

    iput-object v14, v10, Ly/k;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Landroid/app/Notification;->when:J

    const/4 v14, -0x1

    iput v14, v13, Landroid/app/Notification;->audioStreamType:I

    iput v12, v10, Ly/k;->h:I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v10, Ly/k;->p:Ljava/util/ArrayList;

    iput-boolean v4, v10, Ly/k;->n:Z

    iput-boolean v4, v10, Ly/k;->k:Z

    iget v14, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v13, Landroid/app/Notification;->flags:I

    invoke-static {v6}, Ly/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v10, Ly/k;->e:Ljava/lang/CharSequence;

    new-instance v6, Lp5/p;

    const/16 v14, 0x11

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lp5/p;-><init>(IZ)V

    invoke-static {v5}, Ly/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    iput-object v14, v6, Lp5/p;->r:Ljava/lang/Object;

    invoke-virtual {v10, v6}, Ly/k;->b(Lp5/p;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v14, LB2/a;->b:Ljava/lang/Boolean;

    if-nez v14, :cond_7

    const-string v14, "android.hardware.type.watch"

    invoke-virtual {v6, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, LB2/a;->b:Ljava/lang/Boolean;

    :cond_7
    sget-object v6, LB2/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v14, 0x2

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v13, Landroid/app/Notification;->icon:I

    iput v14, v10, Ly/k;->h:I

    invoke-static {v0}, LB2/a;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f130042

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ly/j;

    invoke-direct {v6, v5, v2}, Ly/j;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object v2, v10, Ly/k;->g:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    const v6, 0x108008a

    iput v6, v13, Landroid/app/Notification;->icon:I

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v13, Landroid/app/Notification;->when:J

    iput-object v2, v10, Ly/k;->g:Landroid/app/PendingIntent;

    invoke-static {v5}, Ly/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Ly/k;->f:Ljava/lang/CharSequence;

    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_d

    if-lt v2, v5, :cond_c

    sget-object v6, Lu2/e;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "com.google.android.gms.availability"

    invoke-static {v9}, Lorg/apache/hc/core5/http/nio/entity/a;->c(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f130039

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_a

    invoke-static {v0}, Lu2/d;->a(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/apache/hc/core5/http/nio/entity/a;->v(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_a
    invoke-static {v7}, Lorg/apache/hc/core5/http/nio/entity/a;->d(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v7, v0}, Lorg/apache/hc/core5/http/nio/entity/a;->u(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lorg/apache/hc/core5/http/nio/entity/a;->v(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_b
    :goto_4
    iput-object v6, v10, Ly/k;->m:Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_d
    :goto_5
    const-string v0, "android.support.allowGeneratedReplies"

    const-string v6, "invisible_actions"

    const-string v7, "android.car.EXTENSIONS"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v11, v10, Ly/k;->a:Landroid/content/Context;

    iget-object v13, v10, Ly/k;->p:Ljava/util/ArrayList;

    iget-object v15, v10, Ly/k;->c:Ljava/util/ArrayList;

    move/from16 v16, v14

    iget-object v14, v10, Ly/k;->d:Ljava/util/ArrayList;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_e

    iget-object v4, v10, Ly/k;->m:Ljava/lang/String;

    invoke-static {v11, v4}, Ly/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    goto :goto_6

    :cond_e
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_6
    iget-object v11, v10, Ly/k;->o:Landroid/app/Notification;

    move-object/from16 p1, v6

    iget-wide v5, v11, Landroid/app/Notification;->when:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v11, Landroid/app/Notification;->icon:I

    iget v12, v11, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v5, v6, v12}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v11, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v11, Landroid/app/Notification;->ledARGB:I

    iget v12, v11, Landroid/app/Notification;->ledOnMS:I

    iget v3, v11, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v5, v6, v12, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v11, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v10, Ly/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v10, Ly/k;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v10, Ly/k;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v3, v12, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/n;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v10, Ly/k;->h:I

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v3, v10, Ly/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_19

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v17

    check-cast v12, Ly/j;

    move-object/from16 v17, v3

    iget-object v3, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_13

    iget v3, v12, Ly/j;->e:I

    if-eqz v3, :cond_13

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    :cond_13
    iget-object v3, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    move/from16 v18, v5

    iget-boolean v5, v12, Ly/j;->c:Z

    move/from16 v19, v6

    iget-object v6, v12, Ly/j;->a:Landroid/os/Bundle;

    move-object/from16 v20, v15

    if-eqz v3, :cond_14

    const/4 v15, 0x0

    invoke-static {v3, v15}, LC/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_c
    iget-object v15, v12, Ly/j;->f:Ljava/lang/CharSequence;

    move-object/from16 v21, v9

    iget-object v9, v12, Ly/j;->g:Landroid/app/PendingIntent;

    invoke-static {v3, v15, v9}, Ly/n;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v3

    if-eqz v6, :cond_15

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :cond_15
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :goto_d
    invoke-virtual {v9, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3, v5}, Ly/o;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v5, "android.support.action.semanticAction"

    const/4 v15, 0x0

    invoke-virtual {v9, v5, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x1c

    if-lt v6, v5, :cond_16

    invoke-static {v3, v15}, Ly/q;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    :cond_16
    const/16 v5, 0x1d

    if-lt v6, v5, :cond_17

    invoke-static {v3, v15}, Ly/r;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_17
    const/16 v5, 0x1f

    if-lt v6, v5, :cond_18

    invoke-static {v3, v15}, Ly/s;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_18
    const-string v5, "android.support.action.showsUserInterface"

    iget-boolean v6, v12, Ly/j;->d:Z

    invoke-virtual {v9, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v3, v9}, Ly/l;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    invoke-static {v3}, Ly/l;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v3

    invoke-static {v4, v3}, Ly/l;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-object/from16 v3, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v15, v20

    move-object/from16 v9, v21

    goto/16 :goto_b

    :cond_19
    move-object/from16 v21, v9

    move-object/from16 v20, v15

    iget-object v3, v10, Ly/k;->l:Landroid/os/Bundle;

    if-eqz v3, :cond_1a

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v5, v10, Ly/k;->i:Z

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-boolean v5, v10, Ly/k;->k:Z

    invoke-static {v4, v5}, Ly/l;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-static {v4, v12}, Ly/l;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/l;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v15, 0x0

    invoke-static {v4, v15}, Ly/l;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/m;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {v4, v15}, Ly/m;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v4, v15}, Ly/m;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/m;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v5, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v6, v11, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v4, v5, v6}, Ly/m;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    const/16 v5, 0x1c

    if-ge v3, v5, :cond_1f

    if-nez v20, :cond_1b

    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1e

    :goto_e
    if-nez v3, :cond_1c

    goto :goto_f

    :cond_1c
    if-nez v13, :cond_1d

    move-object v13, v3

    goto :goto_f

    :cond_1d
    new-instance v5, Ln/f;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v5, v9}, Ln/f;-><init>(I)V

    invoke-virtual {v5, v3}, Ln/f;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v13}, Ln/f;->addAll(Ljava/util/Collection;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_f

    :cond_1e
    invoke-static {v5}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_1f
    :goto_f
    if-eqz v13, :cond_20

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_20

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Ly/m;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_10

    :cond_20
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, v10, Ly/k;->l:Landroid/os/Bundle;

    if-nez v3, :cond_21

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v10, Ly/k;->l:Landroid/os/Bundle;

    :cond_21
    iget-object v3, v10, Ly/k;->l:Landroid/os/Bundle;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_22

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_22
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    :goto_11
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_26

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly/j;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iget-object v15, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v15, :cond_23

    iget v15, v12, Ly/j;->e:I

    if-eqz v15, :cond_23

    invoke-static {v15}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v15

    iput-object v15, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    :cond_23
    iget-object v15, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    move/from16 v17, v9

    iget-object v9, v12, Ly/j;->a:Landroid/os/Bundle;

    move-object/from16 v18, v14

    const-string v14, "icon"

    if-eqz v15, :cond_24

    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v15

    goto :goto_12

    :cond_24
    const/4 v15, 0x0

    :goto_12
    invoke-virtual {v13, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "title"

    iget-object v15, v12, Ly/j;->f:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v14, "actionIntent"

    iget-object v15, v12, Ly/j;->g:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v9, :cond_25

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_13

    :cond_25
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    :goto_13
    iget-boolean v9, v12, Ly/j;->c:Z

    invoke-virtual {v14, v0, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "extras"

    invoke-virtual {v13, v9, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v9, "remoteInputs"

    const/4 v15, 0x0

    invoke-virtual {v13, v9, v15}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v9, "showsUserInterface"

    iget-boolean v12, v12, Ly/j;->d:Z

    invoke-virtual {v13, v9, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "semanticAction"

    const/4 v15, 0x0

    invoke-virtual {v13, v9, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v11, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v17, 0x1

    move-object/from16 v14, v18

    goto :goto_11

    :cond_26
    move-object/from16 v9, p1

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v10, Ly/k;->l:Landroid/os/Bundle;

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Ly/k;->l:Landroid/os/Bundle;

    :cond_27
    iget-object v0, v10, Ly/k;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v10, Ly/k;->l:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-static {v4, v12}, Ly/o;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_29

    const/4 v15, 0x0

    invoke-static {v4, v15}, Ly/p;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/p;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {v4, v12}, Ly/p;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Ly/p;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    invoke-static {v4, v15}, Ly/p;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v3, v10, Ly/k;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v15, v15, v15}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_29
    const/16 v5, 0x1c

    if-lt v0, v5, :cond_2a

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_2a
    const/16 v5, 0x1d

    goto :goto_14

    :cond_2b
    invoke-static {v3}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :goto_14
    if-lt v0, v5, :cond_2c

    iget-boolean v0, v10, Ly/k;->n:Z

    invoke-static {v4, v0}, Ly/r;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-static {v4, v12}, Ly/r;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    goto :goto_15

    :cond_2c
    const/4 v12, 0x0

    :goto_15
    iget-object v0, v10, Ly/k;->j:Lp5/p;

    if-eqz v0, :cond_2d

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, v12}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    iget-object v5, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_2d
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2e

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_16

    :cond_2e
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    :goto_16
    if-eqz v0, :cond_2f

    iget-object v3, v10, Ly/k;->j:Lp5/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2f
    if-eqz v0, :cond_30

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_30

    const-string v3, "androidx.core.app.NotificationCompat$BigTextStyle"

    const-string v4, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const/4 v0, 0x1

    if-eq v1, v0, :cond_31

    move/from16 v0, v16

    if-eq v1, v0, :cond_31

    const/4 v0, 0x3

    if-eq v1, v0, :cond_31

    const v0, 0x9b6d

    :goto_17
    move-object/from16 v9, v21

    goto :goto_18

    :cond_31
    sget-object v0, Lu2/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0x28c4

    goto :goto_17

    :goto_18
    invoke-virtual {v9, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final h(Landroid/app/Activity;Lw2/f;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "d"

    invoke-super {p0, p3, p1, v0}, Lu2/f;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lx2/k;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lx2/k;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p3, v1, p4}, Lu2/e;->e(Landroid/app/Activity;ILx2/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lu2/e;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
