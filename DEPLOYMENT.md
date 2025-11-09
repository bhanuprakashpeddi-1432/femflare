# Quick Deployment Guide for Render

This guide provides step-by-step instructions to deploy the Femflare application on Render.

## Prerequisites

1. A GitHub account with this repository forked/accessible
2. A Render account (sign up at https://render.com - free tier available)

## Deployment Methods

### Method 1: Blueprint (Recommended) - Infrastructure as Code

This is the fastest way to deploy using the included `render.yaml` configuration file.

1. **Log in to Render Dashboard**
   - Go to https://dashboard.render.com

2. **Create New Blueprint**
   - Click "New" → "Blueprint"
   - Connect your GitHub account if not already connected
   - Select this repository (`femflare`)
   - Render will automatically detect the `render.yaml` file

3. **Review Configuration**
   - Service name: `femflare-app`
   - Database name: `femflare-db`
   - Plan: Free (or choose paid plan for better performance)

4. **Deploy**
   - Click "Apply"
   - Render will:
     - Create a MySQL database
     - Build the Docker container
     - Deploy the application
     - Configure environment variables automatically

5. **Wait for Deployment**
   - First build takes 5-10 minutes
   - You can monitor progress in the Render dashboard
   - Once complete, you'll get a URL like: `https://femflare-app.onrender.com`

### Method 2: Manual Setup

If you prefer manual control or need to customize settings:

#### Step 1: Create MySQL Database

1. In Render Dashboard, click "New" → "MySQL"
2. Configure:
   - **Name**: `femflare-db`
   - **Database**: `flare`
   - **User**: `femflare_user` (or your choice)
   - **Region**: Choose closest to your users
   - **Plan**: Free or Starter (paid plans offer better performance)
3. Click "Create Database"
4. **Save the connection details** (you'll need them):
   - Internal Database URL
   - Username
   - Password

#### Step 2: Create Web Service

1. Click "New" → "Web Service"
2. Connect your GitHub repository
3. Configure:
   - **Name**: `femflare-app` (or your choice)
   - **Region**: Same as database for best performance
   - **Branch**: `main`
   - **Runtime**: Docker
   - **Plan**: Free or Starter

4. **Set Environment Variables**:
   
   Click "Advanced" and add these environment variables:
   
   | Key | Value | Notes |
   |-----|-------|-------|
   | `SPRING_PROFILES_ACTIVE` | `prod` | Uses production configuration |
   | `DATABASE_URL` | `jdbc:mysql://[internal-host]:3306/flare` | From MySQL service |
   | `DB_USERNAME` | Your DB username | From MySQL service |
   | `DB_PASSWORD` | Your DB password | From MySQL service |
   | `JAVA_OPTS` | `-Xmx512m -Xms256m` | JVM memory settings |

   **Important**: Use the **Internal Database URL** from your MySQL service for better performance and security.

5. **Health Check Path**: `/health`

6. Click "Create Web Service"

#### Step 3: First Deployment

1. Render will automatically start building
2. You can view logs in real-time
3. First build takes 5-10 minutes
4. Once deployed, you'll get a URL like: `https://femflare-app.onrender.com`

## Post-Deployment

### Verify Deployment

1. **Check Application Health**:
   - Visit: `https://your-app.onrender.com/health`
   - Should return: `{"status":"UP","application":"Femflare","timestamp":...}`

2. **Check Database Connection**:
   - Visit: `https://your-app.onrender.com/health/db`
   - Should return: `{"status":"UP","database":"connected"}`

3. **Visit Home Page**:
   - Visit: `https://your-app.onrender.com/`
   - Should load the Femflare home page

### Initial Database Setup

If this is a new deployment, you may need to:

1. Connect to your MySQL database via Render's web shell or a MySQL client
2. Create initial admin user (if required by your application)
3. Seed any initial data needed

## Important Notes

### Free Tier Limitations

- **Spin Down**: Free tier services spin down after 15 minutes of inactivity
- **Spin Up**: First request after spin down takes 30-60 seconds
- **Database Size**: Free MySQL has storage limits
- **Bandwidth**: Limited monthly bandwidth

### Production Considerations

For production use, consider:

1. **Paid Plans**: More reliable, no spin down, better performance
2. **Custom Domain**: Add your own domain name
3. **SSL/TLS**: Automatically provided by Render
4. **Monitoring**: Set up health check monitoring
5. **Backups**: Enable database backups (paid plans)
6. **Scaling**: Consider horizontal scaling for high traffic

## Updating Your Deployment

Render automatically redeploys when you push to your connected branch:

1. Make code changes locally
2. Commit and push to GitHub
3. Render automatically detects the push
4. Rebuilds and redeploys the application

To manually redeploy:
- Go to your service in Render Dashboard
- Click "Manual Deploy" → "Deploy latest commit"

## Troubleshooting

### Build Failures

1. Check build logs in Render dashboard
2. Verify Dockerfile syntax
3. Ensure dependencies in `pom.xml` are accessible

### Connection Issues

1. Verify database is running
2. Check environment variables are correct
3. Use Internal Database URL (not external)
4. Ensure MySQL port (3306) is accessible

### Application Errors

1. Check application logs in Render dashboard
2. Verify `/health` endpoint returns 200
3. Check `/health/db` for database connectivity
4. Review environment variables

### Database Connection Errors

- Ensure you're using the **Internal Database URL**
- Format: `jdbc:mysql://[internal-host]:3306/flare`
- Not the external JDBC URL provided by Render

### Performance Issues

- Free tier services are slower
- Consider upgrading to paid plan
- Check database query performance
- Monitor application logs for bottlenecks

## Support Resources

- **Render Documentation**: https://render.com/docs
- **Render Community**: https://community.render.com
- **Spring Boot Docs**: https://spring.io/projects/spring-boot
- **Project README**: See README.md for detailed project information

## Configuration Reference

All configuration is done through environment variables:

| Variable | Required | Default | Description |
|----------|----------|---------|-------------|
| `SPRING_PROFILES_ACTIVE` | No | `default` | Spring profile to use |
| `PORT` | No* | `8080` | Server port (*Render sets this automatically) |
| `DATABASE_URL` | Yes** | localhost | MySQL JDBC connection URL |
| `DB_USERNAME` | Yes** | root | Database username |
| `DB_PASSWORD` | Yes** | admin | Database password |
| `JAVA_OPTS` | No | `-Xmx512m -Xms256m` | JVM options |

** Required for production deployment

## Cost Estimate

### Free Tier
- Web Service: $0/month (with limitations)
- MySQL Database: $0/month (with limitations)
- **Total**: Free

### Minimum Production Setup
- Web Service (Starter): $7/month
- MySQL Database (Starter): $7/month
- **Total**: $14/month

See https://render.com/pricing for current pricing.

---

**Last Updated**: 2025-11-09

For detailed information, see the main [README.md](README.md) file.
